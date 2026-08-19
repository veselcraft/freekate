.class Lcom/perm/kate/FaveLinksFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FaveLinksFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 77
    check-cast p1, Ljava/util/ArrayList;

    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveLinksFragment;->access$100(Lcom/perm/kate/FaveLinksFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->deleteFaveLinks(J)Z

    .line 79
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveLinksFragment;->access$100(Lcom/perm/kate/FaveLinksFragment;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFaveLinks(Ljava/util/ArrayList;J)V

    .line 80
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveLinksFragment;->access$200(Lcom/perm/kate/FaveLinksFragment;)V

    return-void
.end method
