{% extends './widget/_layout.html' %}



{% block content %}
	<div id="pageWrapper">
		<div id="mainContent">
			<article class="post">
				{% for post in page.posts %}
				 	{% if loop.index < 5 %}	
						<header>
							<h1>
								<a href="{{ post.path }}">{{ post.title }}</a>
							</h1>
							<div class="post-info">
								<span class="post-time">
									<a class="permalink" href="">{{ post.date|date('Y-m-d') }}</a>
								</span>
								<span class="post-tag">
									<a class="tag" href="">{{ post.tag }}</a>
								</span>
							</div>
						</header>
						<div class="post-body">
							{% if post.excerpt %}
								<div class="post-excerpt">
									{{ post.excerpt }}
								</div>
								<div class="post-more">
									{{ post.more }}
								</div>
								<a class="postMore" href="javascrpt:;" data-show="false">......查看全文</a>
							{% else %}
								{{ post.content }}
							{% endif %}
						</div>
				 	{% endif %}
				{% endfor %}
			</article>
		</div>
	</div>
{% endblock %}