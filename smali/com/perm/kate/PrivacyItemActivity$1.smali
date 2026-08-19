.class Lcom/perm/kate/PrivacyItemActivity$1;
.super Ljava/lang/Object;
.source "PrivacyItemActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PrivacyItemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyItemActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$1;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$1;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {p1, p3}, Lcom/perm/kate/PrivacyItemActivity;->access$000(Lcom/perm/kate/PrivacyItemActivity;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
