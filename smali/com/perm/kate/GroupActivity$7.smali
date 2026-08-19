.class Lcom/perm/kate/GroupActivity$7;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->displayWallCountInUiThread(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$wall_count:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$7;->this$0:Lcom/perm/kate/GroupActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupActivity$7;->val$wall_count:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$7;->this$0:Lcom/perm/kate/GroupActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$7;->val$wall_count:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupActivity;->access$1400(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V

    return-void
.end method
