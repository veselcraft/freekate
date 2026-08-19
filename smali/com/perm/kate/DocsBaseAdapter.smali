.class public Lcom/perm/kate/DocsBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "DocsBaseAdapter.java"


# instance fields
.field activity:Landroid/app/Activity;

.field docs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/perm/kate/DocsBaseAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/perm/kate/DocsBaseAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2, p3}, Lcom/perm/kate/DocsAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Document;

    .line 34
    iget-object v1, p1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-wide v2, p1, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/perm/kate/api/Document;->id:J

    iget-object v5, p1, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v6, p1, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    iget-object v7, p1, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/DocsAdapter;->fillView(Landroid/view/View;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method
