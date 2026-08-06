.class public Lcom/perm/utils/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# direct methods
.method public static final addWebLinks(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/LinkSpec;>;"
    sget-object v2, Lcom/perm/utils/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-static {v1, p0, v2}, Lcom/perm/utils/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/utils/LinkSpec;

    .line 23
    .local v0, "link":Lcom/perm/utils/LinkSpec;
    iget-object v3, v0, Lcom/perm/utils/LinkSpec;->url:Ljava/lang/String;

    iget v4, v0, Lcom/perm/utils/LinkSpec;->start:I

    iget v5, v0, Lcom/perm/utils/LinkSpec;->end:I

    invoke-static {v3, v4, v5, p0}, Lcom/perm/utils/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_0

    .line 24
    .end local v0    # "link":Lcom/perm/utils/LinkSpec;
    :cond_0
    return-void
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 38
    new-instance v0, Lcom/perm/utils/Linkify$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/Linkify$1;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 45
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/utils/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 28
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v1, Lcom/perm/utils/LinkSpec;

    invoke-direct {v1}, Lcom/perm/utils/LinkSpec;-><init>()V

    .line 30
    .local v1, "spec":Lcom/perm/utils/LinkSpec;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/utils/LinkSpec;->url:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, v1, Lcom/perm/utils/LinkSpec;->start:I

    .line 32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, v1, Lcom/perm/utils/LinkSpec;->end:I

    .line 33
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    .end local v1    # "spec":Lcom/perm/utils/LinkSpec;
    :cond_0
    return-void
.end method
