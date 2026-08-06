.class Lcom/perm/kate/NewsFragment$18;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->ignoreItem(Ljava/lang/String;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$ignore_item_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$item_id:J

.field final synthetic val$post_owner_id:J

.field final synthetic val$post_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/lang/String;JJLcom/perm/kate/session/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$18;->val$post_type:Ljava/lang/String;

    iput-wide p3, p0, Lcom/perm/kate/NewsFragment$18;->val$post_owner_id:J

    iput-wide p5, p0, Lcom/perm/kate/NewsFragment$18;->val$item_id:J

    iput-object p7, p0, Lcom/perm/kate/NewsFragment$18;->val$ignore_item_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 834
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$18;->val$post_type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/NewsFragment;->access$1100(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/NewsFragment$18;->val$post_owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/NewsFragment$18;->val$item_id:J

    iget-object v6, p0, Lcom/perm/kate/NewsFragment$18;->val$ignore_item_callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v7}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->ignoreItem(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 835
    return-void
.end method
