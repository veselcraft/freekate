.class Lcom/perm/kate/LogCollector$1;
.super Ljava/lang/Object;
.source "LogCollector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LogCollector;->showProgressDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LogCollector;


# direct methods
.method constructor <init>(Lcom/perm/kate/LogCollector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LogCollector;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/perm/kate/LogCollector$1;->this$0:Lcom/perm/kate/LogCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/perm/kate/LogCollector$1;->this$0:Lcom/perm/kate/LogCollector;

    invoke-virtual {v0}, Lcom/perm/kate/LogCollector;->cancellCollectTask()V

    .line 91
    return-void
.end method
