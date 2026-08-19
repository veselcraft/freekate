.class Lcom/perm/kate/MessageSaveActivity$1;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 103
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {p1}, Lcom/perm/kate/MessageSaveActivity;->start()V

    .line 107
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, p1, Lcom/perm/kate/MessageSaveActivity;->view2:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
