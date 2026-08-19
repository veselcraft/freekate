.class Lcom/perm/kate/GroupActivity$23;
.super Ljava/lang/Thread;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->joinGroup()V
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

    .line 708
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 711
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$2300(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/perm/kate/session/Session;->joinGroup(Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
