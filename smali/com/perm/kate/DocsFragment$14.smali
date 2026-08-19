.class Lcom/perm/kate/DocsFragment$14;
.super Lcom/perm/kate/session/Callback;
.source "DocsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 417
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 418
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/DocsFragment;->access$502(Lcom/perm/kate/DocsFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 408
    check-cast p1, Ljava/util/ArrayList;

    .line 409
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/DocsFragment;->access$314(Lcom/perm/kate/DocsFragment;J)J

    .line 410
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createUserDocs(Ljava/util/ArrayList;JZ)V

    .line 411
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$400(Lcom/perm/kate/DocsFragment;)V

    .line 412
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/perm/kate/DocsFragment$14;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p1}, Lcom/perm/kate/DocsFragment;->access$100(Lcom/perm/kate/DocsFragment;)J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    invoke-static {v0, v3}, Lcom/perm/kate/DocsFragment;->access$502(Lcom/perm/kate/DocsFragment;I)I

    return-void
.end method
