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

    .line 57
    iput-object p1, p0, Lcom/perm/kate/WallActivity2$1;->this$0:Lcom/perm/kate/WallActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/perm/kate/WallActivity2$1;->this$0:Lcom/perm/kate/WallActivity2;

    invoke-virtual {p1}, Lcom/perm/kate/WallActivity2;->onComposeButton()V

    return-void
.end method
