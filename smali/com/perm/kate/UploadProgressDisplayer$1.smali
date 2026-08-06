.class Lcom/perm/kate/UploadProgressDisplayer$1;
.super Ljava/lang/Object;
.source "UploadProgressDisplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/UploadProgressDisplayer;->publishProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UploadProgressDisplayer;

.field final synthetic val$currentValue:J


# direct methods
.method constructor <init>(Lcom/perm/kate/UploadProgressDisplayer;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/UploadProgressDisplayer;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->this$0:Lcom/perm/kate/UploadProgressDisplayer;

    iput-wide p2, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->val$currentValue:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->this$0:Lcom/perm/kate/UploadProgressDisplayer;

    iget-object v0, v0, Lcom/perm/kate/UploadProgressDisplayer;->pd:Landroid/app/ProgressDialog;

    iget-wide v2, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->val$currentValue:J

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 26
    return-void
.end method
