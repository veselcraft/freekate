.class Lcom/perm/kate/LongPoll$1;
.super Ljava/lang/Object;
.source "LongPoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LongPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/perm/kate/LongPoll$1;->this$0:Lcom/perm/kate/LongPoll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/perm/kate/LongPoll$1;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v0}, Lcom/perm/kate/LongPoll;->access$100(Lcom/perm/kate/LongPoll;)V

    .line 168
    return-void
.end method
