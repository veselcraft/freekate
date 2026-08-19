.class Lcom/perm/kate/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 803
    iget-object p1, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1}, Lcom/perm/kate/BaseActivity;->onGoHome()V

    return-void
.end method
