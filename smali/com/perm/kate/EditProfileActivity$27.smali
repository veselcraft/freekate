.class Lcom/perm/kate/EditProfileActivity$27;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$27;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$27;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/EditProfileActivity;->access$4900(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 785
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$27;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/EditProfileActivity;->access$2502(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method
