.class Lcom/perm/kate/PollActivity$1;
.super Ljava/lang/Thread;
.source "PollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/perm/kate/PollActivity$1;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/perm/kate/PollActivity$1;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$000(Lcom/perm/kate/PollActivity;)V

    return-void
.end method
