.class public Lcom/perm/kate/DocsBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "DocsBaseAdapter.java"


# instance fields
.field activity:Landroid/app/Activity;

.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/perm/kate/DocsBaseAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    move-object v1, p2

    .line 30
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 31
    iget-object v2, p0, Lcom/perm/kate/DocsBaseAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2, p3}, Lcom/perm/kate/DocsAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/DocsBaseAdapter;->docs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Document;

    .line 34
    .local v0, "doc":Lcom/perm/kate/api/Document;
    iget-object v2, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-wide v4, v0, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/kate/api/Document;->id:J

    iget-object v6, v0, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v7, v0, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    iget-object v8, v0, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/DocsAdapter;->fillView(Landroid/view/View;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "doc":Lcom/perm/kate/api/Document;
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v9

    .line 36
    .local v9, "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
