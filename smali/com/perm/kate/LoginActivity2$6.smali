.class Lcom/perm/kate/LoginActivity2$6;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 223
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$6;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$6;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v0}, Lcom/perm/kate/LoginActivity2;->checkTime()V

    .line 227
    return-void
.end method
