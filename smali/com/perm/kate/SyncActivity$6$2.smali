.class Lcom/perm/kate/SyncActivity$6$2;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SyncActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SyncActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncActivity$6;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$6$2;->this$1:Lcom/perm/kate/SyncActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$6$2;->this$1:Lcom/perm/kate/SyncActivity$6;

    iget-object p1, p1, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    iget p1, p1, Lcom/perm/kate/SyncActivity;->selected:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 224
    invoke-static {p1}, Lcom/perm/kate/sync/SyncLogic;->setPhotoSize(I)V

    :cond_0
    return-void
.end method
