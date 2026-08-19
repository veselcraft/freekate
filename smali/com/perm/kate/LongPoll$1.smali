.class Lcom/perm/kate/LongPoll$1;
.super Ljava/lang/Object;
.source "LongPoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/perm/kate/LongPoll$1;->this$0:Lcom/perm/kate/LongPoll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/perm/kate/LongPoll$1;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v0}, Lcom/perm/kate/LongPoll;->access$200(Lcom/perm/kate/LongPoll;)V

    return-void
.end method
