.class public abstract Lcom/perm/kate/links/VkLinkParser;
.super Ljava/lang/Object;
.source "VkLinkParser.java"


# static fields
.field private static built_from:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pattern_album:Ljava/util/regex/Pattern;

.field private static pattern_albums:Ljava/util/regex/Pattern;

.field private static pattern_away:Ljava/util/regex/Pattern;

.field private static pattern_chat_invite:Ljava/util/regex/Pattern;

.field private static pattern_dialog:Ljava/util/regex/Pattern;

.field private static pattern_domain:Ljava/util/regex/Pattern;

.field private static pattern_group_id:Ljava/util/regex/Pattern;

.field private static pattern_market:Ljava/util/regex/Pattern;

.field private static pattern_market_album:Ljava/util/regex/Pattern;

.field private static pattern_market_item:Ljava/util/regex/Pattern;

.field private static pattern_me:Ljava/util/regex/Pattern;

.field private static pattern_page1:Ljava/util/regex/Pattern;

.field private static pattern_page2:Ljava/util/regex/Pattern;

.field private static pattern_photo:Ljava/util/regex/Pattern;

.field private static pattern_photos:Ljava/util/regex/Pattern;

.field private static pattern_playlist:Ljava/util/regex/Pattern;

.field private static pattern_poll:Ljava/util/regex/Pattern;

.field private static pattern_profile_id:Ljava/util/regex/Pattern;

.field private static pattern_story:Ljava/util/regex/Pattern;

.field private static pattern_string_album:Ljava/lang/String;

.field private static pattern_string_albums:Ljava/lang/String;

.field private static pattern_string_away:Ljava/lang/String;

.field private static pattern_string_chat_invite:Ljava/lang/String;

.field private static pattern_string_dialog:Ljava/lang/String;

.field private static pattern_string_domain:Ljava/lang/String;

.field private static pattern_string_group_id:Ljava/lang/String;

.field private static pattern_string_market:Ljava/lang/String;

.field private static pattern_string_market_album:Ljava/lang/String;

.field private static pattern_string_market_item:Ljava/lang/String;

.field private static pattern_string_me:Ljava/lang/String;

.field private static pattern_string_page1:Ljava/lang/String;

.field private static pattern_string_page2:Ljava/lang/String;

.field private static pattern_string_photo:Ljava/lang/String;

.field private static pattern_string_photos:Ljava/lang/String;

.field private static pattern_string_playlist:Ljava/lang/String;

.field private static pattern_string_poll:Ljava/lang/String;

.field private static pattern_string_profile_id:Ljava/lang/String;

.field private static pattern_string_story:Ljava/lang/String;

.field private static pattern_string_topic:Ljava/lang/String;

.field private static pattern_string_video:Ljava/lang/String;

.field private static pattern_string_video_album:Ljava/lang/String;

.field private static pattern_string_wall:Ljava/lang/String;

.field private static pattern_string_wall_post:Ljava/lang/String;

.field private static pattern_topic:Ljava/util/regex/Pattern;

.field private static pattern_video:Ljava/util/regex/Pattern;

.field private static pattern_video_album:Ljava/util/regex/Pattern;

.field private static pattern_wall:Ljava/util/regex/Pattern;

.field private static pattern_wall_post:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:%D%)()/album(\\-)?(\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_album:Ljava/lang/String;

    const-string v0, "(?:%D%)/albums(\\-?\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_albums:Ljava/lang/String;

    const-string v0, "(?:%D%)/away(\\.php)?\\?(.*)to=(.+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_away:Ljava/lang/String;

    const-string v0, "(?:%D%)()()()()/im\\?sel=(-?\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_dialog:Ljava/lang/String;

    const-string v0, "^(?:https?://)?(?:www\\.)?(?:m\\.)?(?:new\\.)?(?:%D%)/([\\w\\.]+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_domain:Ljava/lang/String;

    const-string v0, "(?:%D%)()()()()/(club|event|public)(\\d+)$"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_group_id:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/market-(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/market-(\\d*)[?]section=album_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market_album:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/(?:[a-z0-9-_=?&]+)?product(\\-?\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market_item:Ljava/lang/String;

    const-string v0, "(?:%D%)()/(\\w+\\?w=)?page(\\-\\d+)_(\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page1:Ljava/lang/String;

    const-string v0, "(?:%D%)()/pages\\?oid=(\\-\\d+)&p=(.+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page2:Ljava/lang/String;

    const-string v0, "(?:%D%)()()()()/(\\w)*(\\-)?(\\d)*(\\?z=)?photo(-?\\d*_\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photo:Ljava/lang/String;

    const-string v0, "(?:%D%)/photos(-?\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photos:Ljava/lang/String;

    const-string v0, "(?:%D%)/.+(?:act=|z=)audio_playlist(\\-?\\d*)_(\\d*)(?:&access_hash=(\\w+))?"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_playlist:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/poll(\\-?\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_poll:Ljava/lang/String;

    const-string v0, "^(?:https?://)?(?:www\\.)?(?:m\\.)?(?:new\\.)?(?:%D%)/id(\\d+)$"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_profile_id:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/story(\\-?\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_story:Ljava/lang/String;

    const-string v0, "(?:%D%)()/topic\\-(\\d*)_(\\d*)(?:\\?post=(\\d*))?"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_topic:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/video(\\-?\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_video:Ljava/lang/String;

    const-string v0, "(?:m\\.)?(?:%D%)/videos(\\-?\\d*)[?]section=album_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_video_album:Ljava/lang/String;

    const-string v0, "(?:%D%)/wall(\\-?\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall:Ljava/lang/String;

    const-string v0, "(?:%D%)/(?:[\\w\\.\\d]+\\?(?:[\\w=&]+)?w=)?wall(\\-?\\d*)_(\\d*)(?:\\?reply=(\\d*))?"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall_post:Ljava/lang/String;

    const-string v0, "(?:https?://)?vk.me/join/[\\w]+"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_chat_invite:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_chat_invite:Ljava/util/regex/Pattern;

    const-string v0, "^(?:https?://)?vk.me/([\\w\\.]+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_me:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_me:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static buildDomains(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-lez v3, :cond_0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "."

    const-string v6, "\\."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    const-string v0, "%D%"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1
.end method

.method private static ensurePatterns()Z
    .locals 4

    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_none

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_none

    sget-object v1, Lcom/perm/kate/links/VkLinkParser;->built_from:Ljava/util/ArrayList;

    if-eq v0, v1, :cond_done

    invoke-static {v0}, Lcom/perm/kate/links/VkLinkParser;->buildDomains(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_album:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_album:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_albums:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_albums:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_away:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_away:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_dialog:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_dialog:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_domain:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_domain:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_group_id:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_group_id:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_market:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market_album:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_market_album:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market_item:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_market_item:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page1:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_page1:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page2:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_page2:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photo:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_photo:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photos:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_photos:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_playlist:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_playlist:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_poll:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_poll:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_profile_id:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_profile_id:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_story:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_story:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_topic:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_topic:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_video:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_video:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_video_album:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_video_album:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_wall:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall_post:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_wall_post:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->built_from:Ljava/util/ArrayList;

    :cond_done
    const/4 v0, 0x1

    return v0

    :cond_none
    const/4 v0, 0x0

    return v0
.end method

.method private static hasPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_no

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_no

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_next

    const/4 v0, 0x1

    return v0

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

.method private static endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_no

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_no

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_next

    const/4 v0, 0x1

    return v0

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_no

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_no

    invoke-static {v0}, Lcom/perm/kate/links/VkLinkParser;->buildDomains(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

.method public static qualify(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    invoke-static {}, Lcom/perm/kate/links/VkLinkParser;->ensurePatterns()Z

    const-string v0, ""

    .line 13
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "vkontakte.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vk.me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vk.cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/images"

    .line 17
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "/search"

    .line 21
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "/feed"

    .line 25
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "?z=photo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "w=wall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "?w=page"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "/audio"

    .line 27
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "audio_playlist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    const-string v0, "/friends"

    .line 29
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    :cond_5
    const-string v0, "/blog/"

    .line 31
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    const-string v0, "/settings"

    .line 33
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    const-string v0, "/artist/"

    .line 35
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "app\\d.*"

    .line 40
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->matchesPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "doc-?\\d.*"

    .line 46
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->matchesPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const-string v0, "/support"

    .line 48
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    const-string v0, "/restore"

    .line 50
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "/restore?"

    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string v0, "/page"

    .line 52
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v1

    :cond_d
    const-string v0, "/board"

    .line 56
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    const-string v0, "/login"

    .line 58
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    const-string v0, "/fave"

    .line 61
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const-string v0, "/bugs?"

    .line 63
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "/bugs"

    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_1

    :cond_11
    const-string v0, "/bugtracker?"

    .line 65
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "/bugtracker"

    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_1

    :cond_12
    const-string v0, "note\\d.*"

    .line 69
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->matchesPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    const-string v0, "/dev/"

    .line 72
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object v1

    :cond_14
    const-string v0, "/page"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "act=edit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object v1

    :cond_15
    const-string v0, "/stickers"

    .line 81
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "/stickers?tab="

    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_1

    :cond_16
    const-string v0, "/video_ext.php"

    .line 84
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-object v1

    :cond_17
    const-string v0, "/mail"

    .line 89
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 90
    new-instance p0, Lcom/perm/kate/links/VkLink;

    sget-object v0, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {p0, v0}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    return-object p0

    :cond_18
    const-string v0, "/im"

    .line 91
    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "/im"

    invoke-static {p0, v0}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const-string v0, "vk.cc/"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 94
    new-instance p0, Lcom/perm/kate/links/VkLink;

    sget-object v0, Lcom/perm/kate/links/VkLinkType;->VKCC:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {p0, v0}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    return-object p0

    .line 96
    :cond_1a
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePage(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_1b

    return-object v0

    .line 100
    :cond_1b
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePhoto(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-object v0

    .line 104
    :cond_1c
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_1d

    return-object v0

    .line 112
    :cond_1d
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseProfileById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    .line 116
    :cond_1e
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseGroupById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_1f

    return-object v0

    .line 120
    :cond_1f
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseTopic(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    .line 124
    :cond_20
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseWallPost(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    .line 128
    :cond_21
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAway(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_22

    return-object v0

    .line 133
    :cond_22
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAudioPlaylist(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_23

    return-object v0

    :cond_23
    const-string v0, "/im?sel"

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 138
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseDialog(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_24

    return-object v0

    .line 143
    :cond_24
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAlbums(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_25

    return-object v0

    .line 147
    :cond_25
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseWall(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_26

    return-object v0

    .line 151
    :cond_26
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseVideo(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_27

    return-object v0

    .line 155
    :cond_27
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePhotos(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_28

    return-object v0

    .line 159
    :cond_28
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseMarketItem(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_29

    return-object v0

    .line 163
    :cond_29
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseMarketAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_2a

    return-object v0

    .line 167
    :cond_2a
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseMarket(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_2b

    return-object v0

    .line 171
    :cond_2b
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseArticle(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_2c

    return-object v0

    .line 175
    :cond_2c
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePoll(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_2d

    return-object v0

    .line 179
    :cond_2d
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseChatInvite(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_2e

    return-object v0

    .line 183
    :cond_2e
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseStory(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_2f

    return-object v0

    .line 187
    :cond_2f
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseVideoAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_30

    return-object v0

    .line 192
    :cond_30
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseDomain(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    if-eqz v0, :cond_31

    return-object v0

    .line 196
    :cond_31
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseVkMe(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object p0

    if-eqz p0, :cond_32

    return-object p0

    :cond_32
    return-object v1

    .line 92
    :cond_33
    :goto_0
    new-instance p0, Lcom/perm/kate/links/VkLink;

    sget-object v0, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {p0, v0}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    return-object p0

    :cond_34
    :goto_1
    return-object v1
.end method

.method private static parseAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3

    .line 222
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_album:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x2

    .line 226
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 227
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x4

    .line 230
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    const-string v1, "0"

    .line 231
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v1, -0x6

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    .line 233
    :cond_2
    iget-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 v1, -0x7

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    .line 235
    :cond_3
    iget-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 v1, -0xf

    .line 236
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method private static parseAlbums(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 419
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_albums:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 422
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->ALBUMS:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 423
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseArticle(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 1

    const-string v0, "vk.com/@"

    .line 496
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 498
    :cond_0
    new-instance p0, Lcom/perm/kate/links/VkLink;

    sget-object v0, Lcom/perm/kate/links/VkLinkType;->ARTICLE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {p0, v0}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    return-object p0
.end method

.method private static parseAudioPlaylist(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 509
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_playlist:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 512
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->AUDIO_PLAYLIST:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 513
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 514
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    const/4 v1, 0x3

    .line 515
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->access_key:Ljava/lang/String;

    return-object v0
.end method

.method private static parseAway(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 4

    .line 386
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_away:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 389
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x3

    .line 392
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "windows-1251"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->link:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 394
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 395
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 397
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->link:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static parseChatInvite(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 1

    .line 536
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_chat_invite:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 539
    :cond_0
    new-instance p0, Lcom/perm/kate/links/VkLink;

    sget-object v0, Lcom/perm/kate/links/VkLinkType;->CHAT_INVITE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {p0, v0}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    return-object p0
.end method

.method private static parseDialog(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 406
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_dialog:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->DIALOG:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x5

    .line 410
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseDomain(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 312
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_domain:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 315
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 316
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    return-object v0
.end method

.method private static parseGroupById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 283
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_group_id:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 286
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->GROUP:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x6

    .line 287
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseMarket(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 487
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_market:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 488
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->MARKET:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 491
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseMarketAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 474
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_market_album:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 475
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 477
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->MARKET_ALBUM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 478
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 479
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseMarketItem(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 461
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_market_item:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 462
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 464
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 465
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 466
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parsePage(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3

    .line 365
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_page1:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 367
    new-instance p0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {p0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x4

    .line 369
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object p0

    .line 372
    :cond_0
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_page2:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 373
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x2

    .line 375
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 376
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parsePhoto(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 209
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_photo:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x9

    .line 212
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 213
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PHOTO:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 214
    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->photo:Ljava/lang/String;

    return-object v0
.end method

.method private static parsePhotos(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3

    .line 244
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_photos:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 248
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const-wide/16 v1, -0x3e8

    .line 249
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    return-object v0
.end method

.method private static parsePoll(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 523
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_poll:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 524
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 526
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->POLL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 527
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 528
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseProfileById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 271
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_profile_id:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PROFILE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 275
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseStory(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 548
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_story:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 551
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->STORY:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 552
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 553
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseTopic(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3

    .line 294
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_topic:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 297
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->TOPIC:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x2

    .line 298
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x3

    .line 299
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->topic_id:Ljava/lang/String;

    const/4 v1, 0x4

    .line 300
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 301
    sget-object v2, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    .line 302
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private static parseVideo(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 444
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_video:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 447
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->VIDEO:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 448
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 449
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseVideoAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 561
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_video_album:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 562
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 564
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->VIDEO_ALBUM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 565
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 566
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseVkMe(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 325
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_me:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 329
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    return-object v0
.end method

.method private static parseWall(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 2

    .line 432
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_wall:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 433
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->WALL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 436
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method private static parseWallPost(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3

    .line 342
    sget-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_wall_post:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 345
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->WALL_POST:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    const/4 v1, 0x1

    .line 346
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    const/4 v1, 0x2

    .line 347
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    const/4 v1, 0x3

    .line 348
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 349
    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    .line 350
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
