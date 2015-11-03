{% extends './widget/_layout.html' %}

{% block title %}
	{{ page.title }}
{% endblock %}

{% block content %}
	<div id="pageWrapper">
		<div id="mainContent">
			<article class="post">
				<header>
					<h1>
						<a href="{{ page.path }}">{{ page.title }}</a>
					</h1>
					<div class="post-info">
						<span class="post-time">
							<a class="permalink" href="">{{ page.date|date('Y-m-d') }}</a>
						</span>
						<span class="post-tag">
							<a class="tag" href="">{{ page.tag }}</a>
						</span>
					</div>
				</header>
				<div class="post-body">
					{{ page.content }}
				</div>
			</article>
		</div>
	</div>
{% endblock %}