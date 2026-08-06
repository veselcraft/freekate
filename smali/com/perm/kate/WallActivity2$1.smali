.class Lcom/perm/kate/WallActivity2$1;
.super Ljava/lang/Object;
.source "WallActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallActivity2;->checkSetupComposeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallActivity2;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/perm/kate/WallActivity2$1;->this$0:Lcom/perm/kate/WallActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/perm/kate/WallActivity2$1;->this$0:Lcom/perm/kate/WallActivity2;

    invoke-virtual {v0}, Lcom/perm/kate/WallActivity2;->onComposeButton()V

    .line 62
    return-void
.end method
