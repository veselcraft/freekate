.class Lcom/perm/kate/SearchVideoParamsActivity$1;
.super Ljava/lang/Object;
.source "SearchVideoParamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchVideoParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchVideoParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchVideoParamsActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity$1;->this$0:Lcom/perm/kate/SearchVideoParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity$1;->this$0:Lcom/perm/kate/SearchVideoParamsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
