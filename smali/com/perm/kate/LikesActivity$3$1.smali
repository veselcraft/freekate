.class Lcom/perm/kate/LikesActivity$3$1;
.super Ljava/lang/Object;
.source "LikesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LikesActivity$3;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LikesActivity$3;

.field final synthetic val$items_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity$3;Ljava/util/ArrayList;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$3$1;->this$1:Lcom/perm/kate/LikesActivity$3;

    iput-object p2, p0, Lcom/perm/kate/LikesActivity$3$1;->val$items_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$3$1;->this$1:Lcom/perm/kate/LikesActivity$3;

    iget-object v0, v0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    new-instance v1, Lcom/perm/kate/LikesAdapter;

    iget-object v2, p0, Lcom/perm/kate/LikesActivity$3$1;->val$items_ids:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/LikesActivity$3$1;->this$1:Lcom/perm/kate/LikesActivity$3;

    iget-object v3, v3, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/LikesAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/perm/kate/LikesActivity;->access$802(Lcom/perm/kate/LikesActivity;Lcom/perm/kate/LikesAdapter;)Lcom/perm/kate/LikesAdapter;

    .line 136
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$3$1;->this$1:Lcom/perm/kate/LikesActivity$3;

    iget-object v0, v0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v0}, Lcom/perm/kate/LikesActivity;->access$900(Lcom/perm/kate/LikesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LikesActivity$3$1;->this$1:Lcom/perm/kate/LikesActivity$3;

    iget-object v1, v1, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$800(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/LikesAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
