.class Lcom/perm/kate/NewsFragment$5$2;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewsFragment$5;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment$5;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$5$2;->this$1:Lcom/perm/kate/NewsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$5$2;->this$1:Lcom/perm/kate/NewsFragment$5;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0}, Lcom/perm/kate/NewsFragment;->access$500(Lcom/perm/kate/NewsFragment;)V

    return-void
.end method
