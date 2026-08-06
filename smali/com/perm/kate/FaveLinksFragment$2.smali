.class Lcom/perm/kate/FaveLinksFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FaveLinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FaveLinksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveLinksFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    .line 90
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 80
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Link;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v2}, Lcom/perm/kate/FaveLinksFragment;->access$100(Lcom/perm/kate/FaveLinksFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteFaveLinks(J)Z

    .line 81
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v2}, Lcom/perm/kate/FaveLinksFragment;->access$100(Lcom/perm/kate/FaveLinksFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createFaveLinks(Ljava/util/ArrayList;J)V

    .line 82
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    .line 83
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$2;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveLinksFragment;->access$200(Lcom/perm/kate/FaveLinksFragment;)V

    .line 84
    return-void
.end method
