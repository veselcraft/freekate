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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoUploadOptionsActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$3;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$3;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->showEditInfo()V

    .line 202
    return-void
.end method
