{% extends './widget/_layout.html' %}

{% block content %}
	<div id="pageWrapper">
		<div id="mainContent">
			<h2>文章列表：</h2>
			<ul class="posts-index">
				{% set posts =  page.posts %}
				{% for post in posts %}
					{% if post.archives == 'pl' %}
						<li>
							<a href="{{ url_for(post.path) }}">{{ post.title }}</a>
							<p class="post-time">
								发表时间：{{ post.date|date('Y-m-d') }}
							</p>
						</li>
					{% endif %}
				{% endfor %}
			</ul>
		</div>
	</div>
{% endblock %}