.class Lcom/perm/kate/GroupActivity$6;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->displayBanInfoInUiThread(JLjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$end_date:J

.field final synthetic val$reason:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$6;->this$0:Lcom/perm/kate/GroupActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupActivity$6;->val$end_date:J

    iput-object p4, p0, Lcom/perm/kate/GroupActivity$6;->val$comment:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/GroupActivity$6;->val$reason:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 495
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$6;->this$0:Lcom/perm/kate/GroupActivity;

    iget-wide v1, p0, Lcom/perm/kate/GroupActivity$6;->val$end_date:J

    iget-object v3, p0, Lcom/perm/kate/GroupActivity$6;->val$comment:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$6;->val$reason:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/GroupActivity;->access$1300(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
