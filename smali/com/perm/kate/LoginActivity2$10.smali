.class Lcom/perm/kate/LoginActivity2$10;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LoginActivity2;
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
    .line 328
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$10;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$10;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v0}, Lcom/perm/kate/LoginActivity2;->access$500(Lcom/perm/kate/LoginActivity2;)V

    .line 332
    return-void
.end method
