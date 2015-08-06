# django

1. groups of groups

        [django:children]
        web
        task

1. numbered hosts

        [web]
        web[1:20].example.com

1. numbered hosts leading zero

        [web]
        web[01:20].example.com

1. alphabetic range

        [web]
        web-[a-t].example.com

