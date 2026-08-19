.class Lcom/perm/kate/GroupActivity$3;
.super Ljava/lang/Thread;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$3;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$3;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$200(Lcom/perm/kate/GroupActivity;)V

    return-void
.end method
