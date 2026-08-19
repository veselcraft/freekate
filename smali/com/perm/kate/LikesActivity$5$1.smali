.class Lcom/perm/kate/LikesActivity$5$1;
.super Ljava/lang/Object;
.source "LikesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LikesActivity$5;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LikesActivity$5;

.field final synthetic val$items_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity$5;Ljava/util/ArrayList;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$5$1;->this$1:Lcom/perm/kate/LikesActivity$5;

    iput-object p2, p0, Lcom/perm/kate/LikesActivity$5$1;->val$items_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$5$1;->this$1:Lcom/perm/kate/LikesActivity$5;

    iget-object v0, v0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v0}, Lcom/perm/kate/LikesActivity;->access$800(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/LikesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LikesActivity$5$1;->val$items_ids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LikesAdapter;->addItems(Ljava/util/ArrayList;)V

    return-void
.end method
