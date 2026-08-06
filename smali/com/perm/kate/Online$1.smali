.class Lcom/perm/kate/Online$1;
.super Ljava/lang/Thread;
.source "Online.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Online;->startUnchecked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Online;


# direct methods
.method constructor <init>(Lcom/perm/kate/Online;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Online;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/perm/kate/Online$1;->this$0:Lcom/perm/kate/Online;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/perm/kate/Online$1;->this$0:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->setOnline()V

    .line 35
    return-void
.end method
