.class Lcom/perm/kate/GamesActivity$2$1;
.super Ljava/lang/Object;
.source "GamesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GamesActivity$2;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GamesActivity$2;

.field final synthetic val$games:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GamesActivity$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GamesActivity$2;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/kate/GamesActivity$2$1;->this$1:Lcom/perm/kate/GamesActivity$2;

    iput-object p2, p0, Lcom/perm/kate/GamesActivity$2$1;->val$games:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/perm/kate/GamesActivity$2$1;->this$1:Lcom/perm/kate/GamesActivity$2;

    iget-object v0, v0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    new-instance v1, Lcom/perm/kate/GamesAdapter;

    iget-object v2, p0, Lcom/perm/kate/GamesActivity$2$1;->val$games:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/GamesActivity$2$1;->this$1:Lcom/perm/kate/GamesActivity$2;

    iget-object v3, v3, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/GamesAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/perm/kate/GamesActivity;->access$102(Lcom/perm/kate/GamesActivity;Lcom/perm/kate/GamesAdapter;)Lcom/perm/kate/GamesAdapter;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/GamesActivity$2$1;->this$1:Lcom/perm/kate/GamesActivity$2;

    iget-object v0, v0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-static {v0}, Lcom/perm/kate/GamesActivity;->access$200(Lcom/perm/kate/GamesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GamesActivity$2$1;->this$1:Lcom/perm/kate/GamesActivity$2;

    iget-object v1, v1, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-static {v1}, Lcom/perm/kate/GamesActivity;->access$100(Lcom/perm/kate/GamesActivity;)Lcom/perm/kate/GamesAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    return-void
.end method
