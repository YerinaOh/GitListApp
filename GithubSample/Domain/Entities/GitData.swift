//
//  GitData.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import Foundation

struct GitData: Codable {
    var full_name: String = ""
    var updated_at: String = ""
}

/*
"id": 336822133,
        "node_id": "MDEwOlJlcG9zaXRvcnkzMzY4MjIxMzM=",
        "name": "DevMood",
        "full_name": "YerinaOh/DevMood",
        "private": false,
        "owner": {
            "login": "YerinaOh",
            "id": 25735293,
            "node_id": "MDQ6VXNlcjI1NzM1Mjkz",
            "avatar_url": "https://avatars.githubusercontent.com/u/25735293?v=4",
            "gravatar_id": "",
            "url": "https://api.github.com/users/YerinaOh",
            "html_url": "https://github.com/YerinaOh",
            "followers_url": "https://api.github.com/users/YerinaOh/followers",
            "following_url": "https://api.github.com/users/YerinaOh/following{/other_user}",
            "gists_url": "https://api.github.com/users/YerinaOh/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/YerinaOh/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/YerinaOh/subscriptions",
            "organizations_url": "https://api.github.com/users/YerinaOh/orgs",
            "repos_url": "https://api.github.com/users/YerinaOh/repos",
            "events_url": "https://api.github.com/users/YerinaOh/events{/privacy}",
            "received_events_url": "https://api.github.com/users/YerinaOh/received_events",
            "type": "User",
            "site_admin": false
        },
        "html_url": "https://github.com/YerinaOh/DevMood",
        "description": null,
        "fork": false,
        "url": "https://api.github.com/repos/YerinaOh/DevMood",
        "forks_url": "https://api.github.com/repos/YerinaOh/DevMood/forks",
        "keys_url": "https://api.github.com/repos/YerinaOh/DevMood/keys{/key_id}",
        "collaborators_url": "https://api.github.com/repos/YerinaOh/DevMood/collaborators{/collaborator}",
        "teams_url": "https://api.github.com/repos/YerinaOh/DevMood/teams",
        "hooks_url": "https://api.github.com/repos/YerinaOh/DevMood/hooks",
        "issue_events_url": "https://api.github.com/repos/YerinaOh/DevMood/issues/events{/number}",
        "events_url": "https://api.github.com/repos/YerinaOh/DevMood/events",
        "assignees_url": "https://api.github.com/repos/YerinaOh/DevMood/assignees{/user}",
        "branches_url": "https://api.github.com/repos/YerinaOh/DevMood/branches{/branch}",
        "tags_url": "https://api.github.com/repos/YerinaOh/DevMood/tags",
        "blobs_url": "https://api.github.com/repos/YerinaOh/DevMood/git/blobs{/sha}",
        "git_tags_url": "https://api.github.com/repos/YerinaOh/DevMood/git/tags{/sha}",
        "git_refs_url": "https://api.github.com/repos/YerinaOh/DevMood/git/refs{/sha}",
        "trees_url": "https://api.github.com/repos/YerinaOh/DevMood/git/trees{/sha}",
        "statuses_url": "https://api.github.com/repos/YerinaOh/DevMood/statuses/{sha}",
        "languages_url": "https://api.github.com/repos/YerinaOh/DevMood/languages",
        "stargazers_url": "https://api.github.com/repos/YerinaOh/DevMood/stargazers",
        "contributors_url": "https://api.github.com/repos/YerinaOh/DevMood/contributors",
        "subscribers_url": "https://api.github.com/repos/YerinaOh/DevMood/subscribers",
        "subscription_url": "https://api.github.com/repos/YerinaOh/DevMood/subscription",
        "commits_url": "https://api.github.com/repos/YerinaOh/DevMood/commits{/sha}",
        "git_commits_url": "https://api.github.com/repos/YerinaOh/DevMood/git/commits{/sha}",
        "comments_url": "https://api.github.com/repos/YerinaOh/DevMood/comments{/number}",
        "issue_comment_url": "https://api.github.com/repos/YerinaOh/DevMood/issues/comments{/number}",
        "contents_url": "https://api.github.com/repos/YerinaOh/DevMood/contents/{+path}",
        "compare_url": "https://api.github.com/repos/YerinaOh/DevMood/compare/{base}...{head}",
        "merges_url": "https://api.github.com/repos/YerinaOh/DevMood/merges",
        "archive_url": "https://api.github.com/repos/YerinaOh/DevMood/{archive_format}{/ref}",
        "downloads_url": "https://api.github.com/repos/YerinaOh/DevMood/downloads",
        "issues_url": "https://api.github.com/repos/YerinaOh/DevMood/issues{/number}",
        "pulls_url": "https://api.github.com/repos/YerinaOh/DevMood/pulls{/number}",
        "milestones_url": "https://api.github.com/repos/YerinaOh/DevMood/milestones{/number}",
        "notifications_url": "https://api.github.com/repos/YerinaOh/DevMood/notifications{?since,all,participating}",
        "labels_url": "https://api.github.com/repos/YerinaOh/DevMood/labels{/name}",
        "releases_url": "https://api.github.com/repos/YerinaOh/DevMood/releases{/id}",
        "deployments_url": "https://api.github.com/repos/YerinaOh/DevMood/deployments",
        "created_at": "2021-02-07T15:37:05Z",
        "updated_at": "2021-04-30T14:57:25Z",
        "pushed_at": "2021-04-30T14:57:23Z",
        "git_url": "git://github.com/YerinaOh/DevMood.git",
        "ssh_url": "git@github.com:YerinaOh/DevMood.git",
        "clone_url": "https://github.com/YerinaOh/DevMood.git",
        "svn_url": "https://github.com/YerinaOh/DevMood",
        "homepage": null,
        "size": 440,
        "stargazers_count": 1,
        "watchers_count": 1,
        "language": "Swift",
        "has_issues": true,
        "has_projects": true,
        "has_downloads": true,
        "has_wiki": true,
        "has_pages": false,
        "forks_count": 0,
        "mirror_url": null,
        "archived": false,
        "disabled": false,
        "open_issues_count": 0,
        "license": null,
        "allow_forking": true,
        "is_template": false,
        "topics": [],
        "visibility": "public",
        "forks": 0,
        "open_issues": 0,
        "watchers": 1,
        "default_branch": "main"
    },
*/