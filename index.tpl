<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>{{imp[0]}} - {{imp[1][0]}}</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_CHTML"></script>
        <script type="text/x-mathjax-config">MathJax.Hub.Config({tex2jax: {inlineMath: [['[math]', '[/math]']]}});</script>
        <script>
            function folding(num) {
                var fol = document.getElementById('folding_' + num);
                if(fol.style.display == 'inline-block' || fol.style.display == 'block') {
                    fol.style.display = 'none';
                } else {
                    if(num % 3 == 0) {
                        fol.style.display = 'block';
                    } else {
                        fol.style.display = 'inline-block';
                    }
                }
            }
        </script>
        {{!imp[1][5]}}
        {{!imp[2][3]}}
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <ul id="top_tool">
            <li><a href="/recent_changes"></a>최근 변경</li>
            <li><a href="/recent_discuss"></a>최근 토론</li>
            <li><a href="/random"></a>무작위</li>
            <li><a href="/user">사용자</a></li>
            <li><a href="/other">기타</a></li>
        </ul>
        <div id="tool">
            % for sub_d in menu:
                % if(sub_d[1] == 1):
                    <a href="/{{sub_d[0]}}" id="open">토론</a>
                % elif(sub_d[1] == 0):
                    <a href="/{{sub_d[0]}}">토론</a>
                % else:
                    <a href="/{{sub_d[0]}}">{{sub_d[1]}}</a>
                % end
            % end
        </div>
        <div id="data">
            <h1 id="title">
                {{imp[0]}}
                % if(imp[3][0] != 0):
                    <sub>{{imp[3][0]}}</sub>
                % end
            </h1>
            <br>
            {{!data}}
            <hr id="last">
            <p>{{!imp[1][1]}}</p>
            <div id="powered">
                <a href="https://github.com/2DU/openNAMU">오픈나무</a>
            </div>
    </body>
</html>