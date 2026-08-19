.class Lcom/perm/kate/LogCollector$1;
.super Ljava/lang/Object;
.source "LogCollector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LogCollector;


# direct methods
.method constructor <init>(Lcom/perm/kate/LogCollector;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/perm/kate/LogCollector$1;->this$0:Lcom/perm/kate/LogCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/perm/kate/LogCollector$1;->this$0:Lcom/perm/kate/LogCollector;

    invoke-virtual {p1}, Lcom/perm/kate/LogCollector;->cancellCollectTask()V

    return-void
.end method
