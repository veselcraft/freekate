.class public Lcom/perm/kate/links/VkLinkParser;
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

.field private static pattern_dialog:Ljava/util/regex/Pattern;

.field private static pattern_domain:Ljava/util/regex/Pattern;

.field private static pattern_group_id:Ljava/util/regex/Pattern;

.field private static pattern_market_item:Ljava/util/regex/Pattern;

.field private static pattern_page1:Ljava/util/regex/Pattern;

.field private static pattern_page2:Ljava/util/regex/Pattern;

.field private static pattern_photo:Ljava/util/regex/Pattern;

.field private static pattern_photos:Ljava/util/regex/Pattern;

.field private static pattern_profile_id:Ljava/util/regex/Pattern;

.field private static pattern_string_album:Ljava/lang/String;

.field private static pattern_string_albums:Ljava/lang/String;

.field private static pattern_string_away:Ljava/lang/String;

.field private static pattern_string_dialog:Ljava/lang/String;

.field private static pattern_string_domain:Ljava/lang/String;

.field private static pattern_string_group_id:Ljava/lang/String;

.field private static pattern_string_market_item:Ljava/lang/String;

.field private static pattern_string_page1:Ljava/lang/String;

.field private static pattern_string_page2:Ljava/lang/String;

.field private static pattern_string_photo:Ljava/lang/String;

.field private static pattern_string_photos:Ljava/lang/String;

.field private static pattern_string_profile_id:Ljava/lang/String;

.field private static pattern_string_topic:Ljava/lang/String;

.field private static pattern_string_video:Ljava/lang/String;

.field private static pattern_string_wall:Ljava/lang/String;

.field private static pattern_string_wall_post:Ljava/lang/String;

.field private static pattern_topic:Ljava/util/regex/Pattern;

.field private static pattern_video:Ljava/util/regex/Pattern;

.field private static pattern_wall:Ljava/util/regex/Pattern;

.field private static pattern_wall_post:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "%D%/(\\w)*(\\-)?(\\d)*(\\?z=)?photo(-?\\d*_\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photo:Ljava/lang/String;

    const-string v0, "%D%/album(\\-)?(\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_album:Ljava/lang/String;

    const-string v0, "%D%/photos(-?\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photos:Ljava/lang/String;

    const-string v0, "^(?:https?://)?%D%/id(\\d+)$"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_profile_id:Ljava/lang/String;

    const-string v0, "%D%/(club|event|public)(\\d+)$"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_group_id:Ljava/lang/String;

    const-string v0, "%D%/topic\\-(\\d*)_(\\d*)(?:\\?post=(\\d*))?"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_topic:Ljava/lang/String;

    const-string v0, "^(?:https?://)?%D%/([\\w\\.]+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_domain:Ljava/lang/String;

    const-string v0, "%D%/(?:[\\w\\.\\d]+\\?(?:[\\w=&]+)?w=)?wall(\\-?\\d*)_(\\d*)(?:\\?reply=(\\d*))?"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall_post:Ljava/lang/String;

    const-string v0, "%D%/(\\w+\\?w=)?page(\\-\\d+)_(\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page1:Ljava/lang/String;

    const-string v0, "%D%/pages\\?oid=(\\-\\d+)&p=(.+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page2:Ljava/lang/String;

    const-string v0, "%D%/away(\\.php)?\\?(.*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_away:Ljava/lang/String;

    const-string v0, "%D%/im\\?sel=(\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_dialog:Ljava/lang/String;

    const-string v0, "%D%/albums(\\-?\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_albums:Ljava/lang/String;

    const-string v0, "%D%/wall(\\-?\\d+)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall:Ljava/lang/String;

    const-string v0, "%D%/video(\\-?\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_video:Ljava/lang/String;

    const-string v0, "%D%/product(\\-?\\d*)_(\\d*)"

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market_item:Ljava/lang/String;

    return-void
.end method

.method private static buildDomains(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .param p0, "list"    # Ljava/util/ArrayList;
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

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-lez v3, :cond_0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "domains"    # Ljava/lang/String;

    .prologue
    const-string v0, "%D%"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1
.end method

.method private static endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

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

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static ensurePatterns()Z
    .locals 4

    .prologue
    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perm/kate/links/VkLinkParser;->built_from:Ljava/util/ArrayList;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/perm/kate/links/VkLinkParser;->buildDomains(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photo:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_photo:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_album:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_album:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_photos:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_photos:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_profile_id:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_profile_id:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_group_id:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_group_id:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_topic:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_topic:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_domain:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_domain:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall_post:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_wall_post:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page1:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_page1:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_page2:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_page2:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_away:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_away:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_dialog:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_dialog:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_albums:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_albums:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_wall:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_wall:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_video:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_video:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_string_market_item:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/perm/kate/links/VkLinkParser;->compile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_market_item:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/perm/kate/links/VkLinkParser;->built_from:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hasPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/perm/kate/KApplication;->mirrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

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

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static qualify(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
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

    if-eqz v1, :cond_2

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
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-static {}, Lcom/perm/kate/links/VkLinkParser;->ensurePatterns()Z

    move-result v2

    if-eqz v2, :cond_gate

    const-string v2, ""

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_gate
    move-object v0, v1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 15
    :cond_1
    const-string v2, "/images"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 16
    goto :goto_0

    .line 19
    :cond_2
    const-string v2, "/search"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 20
    goto :goto_0

    .line 23
    :cond_3
    const-string v2, "/feed"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "?z=photo"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "w=wall"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "?w=page"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_4
    const-string v2, "/audio"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_5
    const-string v2, "/friends"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 28
    goto :goto_0

    .line 31
    :cond_6
    const-string v2, "/market-"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    .line 32
    goto :goto_0

    .line 36
    :cond_7
    const-string v2, ".*/app\\d.*"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 37
    goto :goto_0

    .line 39
    :cond_8
    const-string v2, ".*/story\\d*_\\d*.*"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 45
    :cond_9
    const-string v2, ".*/doc\\d.*"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_a
    const-string v2, "/support"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_b
    const-string v2, "/restore"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "/restore?"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move-object v0, v1

    .line 50
    goto/16 :goto_0

    .line 51
    :cond_d
    const-string v2, "/page"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    .line 52
    goto/16 :goto_0

    .line 55
    :cond_e
    const-string v2, "/board"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v0, v1

    .line 56
    goto/16 :goto_0

    .line 57
    :cond_f
    const-string v2, "/login"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v0, v1

    .line 58
    goto/16 :goto_0

    .line 60
    :cond_10
    const-string v2, "/fave"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v0, v1

    .line 61
    goto/16 :goto_0

    .line 62
    :cond_11
    const-string v2, "/bugs?"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "/bugs"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    move-object v0, v1

    .line 63
    goto/16 :goto_0

    .line 66
    :cond_13
    const-string v2, ".*/note\\d.*"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v0, v1

    .line 67
    goto/16 :goto_0

    .line 69
    :cond_14
    const-string v2, "/dev/"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 70
    goto/16 :goto_0

    .line 75
    :cond_15
    const-string v2, "/page"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "act=edit"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v0, v1

    .line 76
    goto/16 :goto_0

    .line 78
    :cond_16
    const-string v2, "/stickers"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "/stickers?tab="

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    move-object v0, v1

    .line 79
    goto/16 :goto_0

    .line 81
    :cond_18
    const-string v2, "/video_ext.php"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->hasPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v0, v1

    .line 82
    goto/16 :goto_0

    .line 86
    :cond_19
    const-string v2, "/mail"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 87
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    goto/16 :goto_0

    .line 88
    :cond_1a
    const-string v2, "/im"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "/im"

    invoke-static {p0, v2}, Lcom/perm/kate/links/VkLinkParser;->endsWithPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 89
    :cond_1b
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    goto/16 :goto_0

    .line 91
    :cond_1c
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePage(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 92
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    if-nez v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePhoto(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseProfileById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseGroupById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseTopic(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseWallPost(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAway(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 127
    const-string v2, "/im?sel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 128
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseDialog(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 133
    :cond_1d
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseAlbums(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseWall(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseVideo(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parsePhotos(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseMarketItem(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parseDomain(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    move-object v0, v1

    .line 158
    goto/16 :goto_0
.end method

.method private static parseAlbum(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_album:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 181
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v3, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v3}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 184
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "minus":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 186
    if-eqz v2, :cond_2

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 188
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    .line 189
    iget-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    const-wide/16 v4, -0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    .line 191
    :cond_3
    iget-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    const-wide/16 v4, -0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    .line 193
    :cond_4
    iget-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-wide/16 v4, -0xf

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseAlbums(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 357
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_albums:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 358
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    .line 360
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->ALBUMS:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 361
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseAway(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_away:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 332
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 336
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    iput-object p0, v0, Lcom/perm/kate/links/VkLink;->link:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseDialog(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_dialog:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 345
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    .line 347
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->DIALOG:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 348
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseDomain(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_domain:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 271
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 273
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 274
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseGroupById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_group_id:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 242
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->GROUP:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 245
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseMarketItem(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_market_item:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 396
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 401
    :goto_0
    return-object v0

    .line 398
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 399
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 400
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parsePage(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 310
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_page1:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 311
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 313
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 314
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    .line 324
    .end local v0    # "link":Lcom/perm/kate/links/VkLink;
    :goto_0
    return-object v0

    .line 317
    :cond_0
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_page2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 320
    .restart local v0    # "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    goto :goto_0

    .line 324
    .end local v0    # "link":Lcom/perm/kate/links/VkLink;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePhoto(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v3, Lcom/perm/kate/links/VkLinkParser;->pattern_photo:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 168
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "photo":Ljava/lang/String;
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v3, Lcom/perm/kate/links/VkLinkType;->PHOTO:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v3}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 172
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->photo:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parsePhotos(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_photos:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 203
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 206
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 207
    const-wide/16 v2, -0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseProfileById(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_profile_id:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 230
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 232
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->PROFILE:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 233
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseTopic(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 252
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_topic:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 253
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    const/4 v0, 0x0

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :cond_1
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->TOPIC:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 256
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 257
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->topic_id:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    sget-object v2, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    .line 260
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseVideo(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 382
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_video:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 383
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    .line 385
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->VIDEO:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 386
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 387
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseWall(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_wall:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 371
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    .line 373
    :cond_0
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 374
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseWallPost(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 287
    sget-object v2, Lcom/perm/kate/links/VkLinkParser;->pattern_wall_post:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 288
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    const/4 v0, 0x0

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 290
    :cond_1
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL_POST:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v2}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 291
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 292
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    .line 295
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    goto :goto_0
.end method
