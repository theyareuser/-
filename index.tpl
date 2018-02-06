<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>{{imp[0]}} - {{imp[1][0]}}</title>
        <link rel="stylesheet" href="/views/super_lite/style.css">
        {{!imp[1][5]}}
        {{!imp[2][3]}}
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <div id="top_tool">
            <a href="/">{{!imp[1][4]}}</a> /
            <a href="/recent_changes">최근 변경</a> /
            <a href="/recent_discuss">최근 토론</a> /
            <a href="/random">무작위</a> /
            % if(imp[2][2] == 1):
                <a href="/user">사용자 (로그인)</a>
            % elif(imp[2][2] == 0):
                <a href="/user">사용자</a>
            % else:
                <a href="/user">사용자 (알림)</a>
            % end
            /
            <a href="/other">기타</a>
        </div>
        <hr>
         <form method="post" action="/search" id="searchform" role="search">
            <input name="search" placeholder="검색">
        </form>       
        <hr>
        <div id="tool">
            % if(menu != 0):
                % i = 0
                % for sub_d in menu:
                    % if(sub_d[1] == 1):
                        <a href="/{{sub_d[0]}}" id="open">토론</a>
                    % elif(sub_d[1] == 0):
                        <a href="/{{sub_d[0]}}">토론</a>
                    % else:
                        <a href="/{{sub_d[0]}}">{{sub_d[1]}}</a>
                    % end
                    % i += 1
                    % if(i != len(menu)):
                        /
                    % end
                % end
                <hr>
            % end
        </div>
        <div id="data">
            <h1 id="title">
                {{imp[0]}}
                % if(imp[3][0] != 0):
                    <sub>{{imp[3][0]}}</sub>
                % end
            </h1>
            <hr>
            {{!data}}
            <hr id="last">
            <p>{{!imp[1][1]}}</p>
            <div id="powered">
                <a href="https://github.com/2DU/openNAMU">오픈나무</a>
            </div>
    </body>
</html>