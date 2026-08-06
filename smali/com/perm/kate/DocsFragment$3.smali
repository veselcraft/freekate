.class Lcom/perm/kate/DocsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "DocsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DocsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/DocsFragment;->access$302(Lcom/perm/kate/DocsFragment;Z)Z

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 114
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/DocsFragment;->showProgressBar(Z)V

    .line 115
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 102
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    .local v0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    const-string v1, "Kate.DocsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prsed docs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v2, v2, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createUserDocs(Ljava/util/ArrayList;J)V

    .line 105
    iget-object v1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/DocsFragment;->showProgressBar(Z)V

    .line 106
    iget-object v1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v1}, Lcom/perm/kate/DocsFragment;->access$200(Lcom/perm/kate/DocsFragment;)V

    .line 107
    return-void
.end method
