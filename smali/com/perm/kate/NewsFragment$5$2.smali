.class Lcom/perm/kate/NewsFragment$5$2;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewsFragment$5;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewsFragment$5;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$5$2;->this$1:Lcom/perm/kate/NewsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$5$2;->this$1:Lcom/perm/kate/NewsFragment$5;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0}, Lcom/perm/kate/NewsFragment;->access$500(Lcom/perm/kate/NewsFragment;)V

    .line 309
    return-void
.end method
