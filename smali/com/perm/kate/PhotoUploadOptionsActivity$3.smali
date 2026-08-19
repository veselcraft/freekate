.class Lcom/perm/kate/PhotoUploadOptionsActivity$3;
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

    .line 210
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$3;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$3;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->showEditInfo()V

    return-void
.end method
