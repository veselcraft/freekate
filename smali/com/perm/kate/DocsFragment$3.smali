.class Lcom/perm/kate/DocsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "DocsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/DocsFragment;->access$602(Lcom/perm/kate/DocsFragment;Z)Z

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 132
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 133
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/DocsFragment;->access$502(Lcom/perm/kate/DocsFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 118
    check-cast p1, Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prsed docs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.DocsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/DocsFragment;->access$302(Lcom/perm/kate/DocsFragment;J)J

    .line 121
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createUserDocs(Ljava/util/ArrayList;JZ)V

    .line 122
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 123
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$400(Lcom/perm/kate/DocsFragment;)V

    .line 124
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v2, p1

    iget-object p1, p0, Lcom/perm/kate/DocsFragment$3;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p1}, Lcom/perm/kate/DocsFragment;->access$100(Lcom/perm/kate/DocsFragment;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-static {v0, v1}, Lcom/perm/kate/DocsFragment;->access$502(Lcom/perm/kate/DocsFragment;I)I

    return-void
.end method
