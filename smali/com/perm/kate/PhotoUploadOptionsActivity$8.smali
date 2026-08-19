.class Lcom/perm/kate/PhotoUploadOptionsActivity$8;
.super Ljava/lang/Object;
.source "PhotoUploadOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoUploadOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$8;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$8;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->showResizeInfo()V

    return-void
.end method
