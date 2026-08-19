.class Lcom/perm/kate/BaseActivity$8;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$8;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1073
    iget-object p1, p0, Lcom/perm/kate/BaseActivity$8;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1}, Lcom/perm/kate/BaseActivity;->onAlbumsButton()V

    return-void
.end method
