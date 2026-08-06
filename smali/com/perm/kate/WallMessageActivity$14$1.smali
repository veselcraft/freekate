.class Lcom/perm/kate/WallMessageActivity$14$1;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity$14;->success(Lcom/perm/kate/api/WallMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallMessageActivity$14;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/WallMessageActivity$14;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$14$1;->this$1:Lcom/perm/kate/WallMessageActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14$1;->this$1:Lcom/perm/kate/WallMessageActivity$14;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$800(Lcom/perm/kate/WallMessageActivity;)V

    .line 546
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14$1;->this$1:Lcom/perm/kate/WallMessageActivity$14;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$600(Lcom/perm/kate/WallMessageActivity;)V

    .line 547
    return-void
.end method
