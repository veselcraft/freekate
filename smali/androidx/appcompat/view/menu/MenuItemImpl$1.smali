.class Landroidx/appcompat/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    .line 800
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 803
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method
