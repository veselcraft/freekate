.class Lcom/perm/kate/UploadProgressDisplayer$1;
.super Ljava/lang/Object;
.source "UploadProgressDisplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UploadProgressDisplayer;

.field final synthetic val$currentValue:J


# direct methods
.method constructor <init>(Lcom/perm/kate/UploadProgressDisplayer;J)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->this$0:Lcom/perm/kate/UploadProgressDisplayer;

    iput-wide p2, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->val$currentValue:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->this$0:Lcom/perm/kate/UploadProgressDisplayer;

    iget-object v0, v0, Lcom/perm/kate/UploadProgressDisplayer;->pd:Landroid/app/ProgressDialog;

    iget-wide v1, p0, Lcom/perm/kate/UploadProgressDisplayer$1;->val$currentValue:J

    long-to-int v2, v1

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
