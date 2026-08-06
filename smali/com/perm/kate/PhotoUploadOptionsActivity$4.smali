.class Lcom/perm/kate/PhotoUploadOptionsActivity$4;
.super Ljava/lang/Object;
.source "PhotoUploadOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoUploadOptionsActivity;->showEditInfo()V
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
    .line 206
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$4;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$4;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const-string v1, "http://market.android.com/details?id=com.shinycore.picsayfree"

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->access$100(Lcom/perm/kate/PhotoUploadOptionsActivity;Ljava/lang/String;)V

    .line 210
    return-void
.end method
