.class public abstract Lcom/perm/utils/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# direct methods
.method public static addWebLinks(Landroid/text/Spannable;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addWebLinks(Landroid/text/Spannable;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget-object v1, Lcom/perm/utils/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object v11, p0

    invoke-static {v0, p0, v1}, Lcom/perm/utils/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/utils/LinkSpec;

    .line 28
    iget-object v2, v1, Lcom/perm/utils/LinkSpec;->url:Ljava/lang/String;

    iget v3, v1, Lcom/perm/utils/LinkSpec;->start:I

    iget v4, v1, Lcom/perm/utils/LinkSpec;->end:I

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v2 .. v10}, Lcom/perm/utils/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 43
    new-instance v7, Lcom/perm/utils/Linkify$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/perm/utils/Linkify$1;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x21

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 51
    invoke-interface {p3, v7, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V
    .locals 1

    .line 32
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 33
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    new-instance p2, Lcom/perm/utils/LinkSpec;

    invoke-direct {p2}, Lcom/perm/utils/LinkSpec;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/perm/utils/LinkSpec;->url:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iput v0, p2, Lcom/perm/utils/LinkSpec;->start:I

    .line 37
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p2, Lcom/perm/utils/LinkSpec;->end:I

    .line 38
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
