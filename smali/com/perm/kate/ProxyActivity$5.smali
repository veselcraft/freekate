.class Lcom/perm/kate/ProxyActivity$5;
.super Ljava/lang/Object;
.source "ProxyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProxyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/perm/kate/ProxyActivity;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 114
    invoke-static {p2}, Lcom/perm/utils/ProxyManager;->setEnabled(Z)V

    return-void
.end method
