.class Lcom/perm/kate/LoginActivity2$9;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2;->showReserveLoginDialogOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$9;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$9;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v0}, Lcom/perm/kate/LoginActivity2;->access$400(Lcom/perm/kate/LoginActivity2;)V

    .line 315
    return-void
.end method
