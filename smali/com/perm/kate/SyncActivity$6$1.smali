.class Lcom/perm/kate/SyncActivity$6$1;
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

    .line 215
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$6$1;->this$1:Lcom/perm/kate/SyncActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$6$1;->this$1:Lcom/perm/kate/SyncActivity$6;

    iget-object p1, p1, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    iput p2, p1, Lcom/perm/kate/SyncActivity;->selected:I

    return-void
.end method
