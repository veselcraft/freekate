.class Lcom/perm/kate/PollCreateActivity$7;
.super Ljava/lang/Object;
.source "PollCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollCreateActivity;->finishOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$7;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$7;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PollCreateActivity;->finish()V

    .line 176
    return-void
.end method
