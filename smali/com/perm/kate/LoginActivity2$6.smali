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

    .line 235
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$6;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$6;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {p1}, Lcom/perm/kate/LoginActivity2;->checkTime()V

    return-void
.end method
