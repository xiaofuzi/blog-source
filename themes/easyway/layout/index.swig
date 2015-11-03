{% extends './widget/_layout.html' %}



{% block content %}
	<div id="pageWrapper">
		<div id="mainContent">
			<article class="post">
				{% for post in page.posts %}
				 	{% if loop.first %}
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
							{{ post.content }}
						</div>
				 	{% endif %}
				{% endfor %}
			</article>
		</div>
	</div>
{% endblock %}