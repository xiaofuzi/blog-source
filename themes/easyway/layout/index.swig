{% extends './widget/_layout.html' %}



{% block content %}
	<div id="pageWrapper">
		<div id="mainContent">
			<article class="post">
				{% for post in page.posts %}
				 	{% if loop.index < 5 %}	
						<header>
							<h1>
								<a href="{{ url_for(post.path) }}" target="_blank">{{ post.title }}</a>
							</h1>
							<div class="post-info">
								<span class="post-time">
									<a class="permalink" href="" >{{ post.date|date('Y-m-d') }}</a>
								</span>
								<span class="post-tag">
									{% set tags = post.tags %}
									{% for t in tags %}
										<a class="tag" href="{{t.permalink}}" target="_blank">{{ t.name }}</a>
									{% endfor %}
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
								<a class="postMore" href="javascript:void(0);" data-show="false">......查看全文</a>
							{% else %}
								{{ post.content }}
							{% endif %}
						</div>
						<hr>
				 	{% endif %}
				{% endfor %}
			</article>
		</div>
	</div>
{% endblock %}