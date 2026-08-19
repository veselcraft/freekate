.class Lcom/perm/kate/GroupActivity$2;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->displayDataOnUiThread()V
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

    .line 410
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$2;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$2;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$100(Lcom/perm/kate/GroupActivity;)V

    return-void
.end method
