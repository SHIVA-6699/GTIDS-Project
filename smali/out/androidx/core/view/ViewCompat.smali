.class public Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewCompat$Api20Impl;,
        Landroidx/core/view/ViewCompat$Api28Impl;,
        Landroidx/core/view/ViewCompat$Api16Impl;,
        Landroidx/core/view/ViewCompat$Api17Impl;,
        Landroidx/core/view/ViewCompat$Api24Impl;,
        Landroidx/core/view/ViewCompat$Api15Impl;,
        Landroidx/core/view/ViewCompat$Api19Impl;,
        Landroidx/core/view/ViewCompat$Api18Impl;,
        Landroidx/core/view/ViewCompat$Api26Impl;,
        Landroidx/core/view/ViewCompat$Api30Impl;,
        Landroidx/core/view/ViewCompat$Api29Impl;,
        Landroidx/core/view/ViewCompat$Api23Impl;,
        Landroidx/core/view/ViewCompat$Api21Impl;,
        Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;,
        Landroidx/core/view/ViewCompat$AccessibilityViewProperty;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;,
        Landroidx/core/view/ViewCompat$Api31Impl;,
        Landroidx/core/view/ViewCompat$ScrollIndicators;,
        Landroidx/core/view/ViewCompat$NestedScrollType;,
        Landroidx/core/view/ViewCompat$ScrollAxis;,
        Landroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Landroidx/core/view/ViewCompat$FocusRealDirection;,
        Landroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static final sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 475
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 487
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 491
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 1241
    const/16 v2, 0x20

    new-array v2, v2, [I

    sget v3, Landroidx/core/R$id;->accessibility_custom_action_0:I

    aput v3, v2, v0

    sget v0, Landroidx/core/R$id;->accessibility_custom_action_1:I

    aput v0, v2, v1

    const/4 v0, 0x2

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_2:I

    aput v1, v2, v0

    const/4 v0, 0x3

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_3:I

    aput v1, v2, v0

    const/4 v0, 0x4

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_4:I

    aput v1, v2, v0

    const/4 v0, 0x5

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_5:I

    aput v1, v2, v0

    const/4 v0, 0x6

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_6:I

    aput v1, v2, v0

    const/4 v0, 0x7

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_7:I

    aput v1, v2, v0

    const/16 v0, 0x8

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_8:I

    aput v1, v2, v0

    const/16 v0, 0x9

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_9:I

    aput v1, v2, v0

    const/16 v0, 0xa

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_10:I

    aput v1, v2, v0

    const/16 v0, 0xb

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_11:I

    aput v1, v2, v0

    const/16 v0, 0xc

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_12:I

    aput v1, v2, v0

    const/16 v0, 0xd

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_13:I

    aput v1, v2, v0

    const/16 v0, 0xe

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_14:I

    aput v1, v2, v0

    const/16 v0, 0xf

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_15:I

    aput v1, v2, v0

    const/16 v0, 0x10

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_16:I

    aput v1, v2, v0

    const/16 v0, 0x11

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_17:I

    aput v1, v2, v0

    const/16 v0, 0x12

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_18:I

    aput v1, v2, v0

    const/16 v0, 0x13

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_19:I

    aput v1, v2, v0

    const/16 v0, 0x14

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_20:I

    aput v1, v2, v0

    const/16 v0, 0x15

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_21:I

    aput v1, v2, v0

    const/16 v0, 0x16

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_22:I

    aput v1, v2, v0

    const/16 v0, 0x17

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_23:I

    aput v1, v2, v0

    const/16 v0, 0x18

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_24:I

    aput v1, v2, v0

    const/16 v0, 0x19

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_25:I

    aput v1, v2, v0

    const/16 v0, 0x1a

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_26:I

    aput v1, v2, v0

    const/16 v0, 0x1b

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_27:I

    aput v1, v2, v0

    const/16 v0, 0x1c

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_28:I

    aput v1, v2, v0

    const/16 v0, 0x1d

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_29:I

    aput v1, v2, v0

    const/16 v0, 0x1e

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_30:I

    aput v1, v2, v0

    const/16 v0, 0x1f

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_31:I

    aput v1, v2, v0

    sput-object v2, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 2852
    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 4536
    new-instance v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4150
    return-void
.end method

.method private static accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4381
    new-instance v0, Landroidx/core/view/ViewCompat$4;

    sget v1, Landroidx/core/R$id;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$4;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "command"    # Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1232
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I

    move-result v0

    .line 1233
    .local v0, "actionId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1234
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1236
    .local v1, "action":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1238
    .end local v1    # "action":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    :cond_f
    return v0
.end method

.method private static addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1326
    nop

    .line 1327
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 1328
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 1329
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 1333
    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 4030
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4031
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V

    .line 4033
    :cond_9
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 4103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 4104
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4105
    return-void

    .line 4107
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4109
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4110
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-nez v0, :cond_1f

    .line 4111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4112
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4114
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 4116
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Landroid/view/View;)V

    .line 4118
    :cond_2c
    return-void
.end method

.method public static animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2080
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 2081
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2083
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2084
    .local v0, "vpa":Landroidx/core/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_20

    .line 2085
    new-instance v1, Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {v1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 2086
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    :cond_20
    return-object v0
.end method

.method private static bindTempDetach()V
    .registers 4

    .line 1894
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 1896
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1900
    goto :goto_22

    .line 1898
    :catch_1a
    move-exception v0

    .line 1899
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1901
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_22
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    .line 1902
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .registers 1
    .param p0, "v"    # Landroid/view/View;

    .line 3899
    nop

    .line 3900
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->cancelDragAndDrop(Landroid/view/View;)V

    .line 3902
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .param p0, "curState"    # I
    .param p1, "newState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 3690
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3691
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 3692
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 3694
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3695
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 3696
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 3699
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 3642
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3643
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 3644
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 3646
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3647
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 3648
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 3651
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    return-void
.end method

.method public static computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .line 2661
    nop

    .line 2662
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 2582
    nop

    .line 2583
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 2584
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    if-eqz v0, :cond_16

    .line 2585
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2586
    .local v1, "result":Landroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2588
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2592
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_16
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 1931
    nop

    .line 1932
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 1948
    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 3474
    nop

    .line 3475
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 3517
    nop

    .line 3518
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 3250
    nop

    .line 3251
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 3444
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_11

    .line 3445
    move-object v1, p0

    check-cast v1, Landroidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0

    .line 3447
    :cond_11
    if-nez p5, :cond_18

    .line 3448
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0

    .line 3450
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II[I)V
    .registers 18
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 3376
    move-object v0, p0

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_15

    .line 3377
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingChild3;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChild3;->dispatchNestedScroll(IIII[II[I)V

    goto :goto_18

    .line 3380
    :cond_15
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[II)Z

    .line 3383
    :goto_18
    return-void
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 3219
    nop

    .line 3220
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 3412
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_12

    .line 3413
    move-object v1, p0

    check-cast v1, Landroidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0

    .line 3415
    :cond_12
    if-nez p6, :cond_19

    .line 3416
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0

    .line 3419
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 1908
    nop

    .line 1909
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 1925
    return-void
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 4179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 4180
    const/4 v0, 0x0

    return v0

    .line 4182
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 4171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 4172
    const/4 v0, 0x0

    return v0

    .line 4174
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static enableAccessibleClickableSpanSupport(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 1420
    nop

    .line 1421
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 1423
    return-void
.end method

.method static ensureAccessibilityDelegateCompat(Landroid/view/View;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 937
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 938
    .local v0, "delegateCompat":Landroidx/core/view/AccessibilityDelegateCompat;
    if-nez v0, :cond_c

    .line 939
    new-instance v1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    move-object v0, v1

    .line 941
    :cond_c
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 942
    return-void
.end method

.method public static generateViewId()I
    .registers 1

    .line 4079
    nop

    .line 4080
    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 926
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 927
    .local v0, "delegate":Landroid/view/View$AccessibilityDelegate;
    if-nez v0, :cond_8

    .line 928
    const/4 v1, 0x0

    return-object v1

    .line 930
    :cond_8
    instance-of v1, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v1, :cond_12

    .line 931
    move-object v1, v0

    check-cast v1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    iget-object v1, v1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object v1

    .line 933
    :cond_12
    new-instance v1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v1
.end method

.method private static getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 946
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 947
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    return-object v0

    .line 949
    :cond_b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 957
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 958
    return-object v1

    .line 960
    :cond_6
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    .line 962
    :try_start_b
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 963
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 964
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    .line 968
    goto :goto_1d

    .line 965
    :catchall_19
    move-exception v0

    .line 966
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 967
    return-object v1

    .line 971
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1d
    :goto_1d
    :try_start_1d
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 972
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v3, :cond_2b

    .line 973
    move-object v3, v0

    check-cast v3, Landroid/view/View$AccessibilityDelegate;
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2c

    return-object v3

    .line 975
    :cond_2b
    return-object v1

    .line 976
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_2c
    move-exception v0

    .line 977
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 978
    return-object v1
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1797
    nop

    .line 1798
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1450
    nop

    .line 1451
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1452
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_d

    .line 1453
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1456
    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 4297
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static getActionList(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 1362
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    .line 1363
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1364
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    if-nez v0, :cond_15

    .line 1365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1366
    sget v1, Landroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1368
    :cond_15
    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1470
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method private static getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 1276
    const/4 v0, -0x1

    .line 1278
    .local v0, "result":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1279
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1280
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1281
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v3

    return v3

    .line 1279
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1285
    .end local v2    # "i":I
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2b
    sget-object v3, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    array-length v4, v3

    if-ge v2, v4, :cond_56

    const/4 v4, -0x1

    if-ne v0, v4, :cond_56

    .line 1287
    aget v3, v3, v2

    .line 1288
    .local v3, "id":I
    const/4 v4, 0x1

    .line 1289
    .local v4, "idAvailable":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_50

    .line 1290
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v6

    if-eq v6, v3, :cond_4b

    const/4 v6, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x0

    :goto_4c
    and-int/2addr v4, v6

    .line 1289
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 1292
    .end local v5    # "j":I
    :cond_50
    if-eqz v4, :cond_53

    .line 1293
    move v0, v3

    .line 1286
    .end local v3    # "id":I
    .end local v4    # "idAvailable":Z
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1296
    .end local v2    # "i":I
    :cond_56
    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3006
    nop

    .line 3007
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3053
    nop

    .line 3054
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3734
    nop

    .line 3735
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api18Impl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3856
    nop

    .line 3857
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2364
    nop

    .line 2365
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 496
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 497
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 499
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 500
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_20

    .line 501
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 502
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 504
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 505
    return-object v0
.end method

.method private static getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2846
    instance-of v0, p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    if-eqz v0, :cond_8

    .line 2847
    move-object v0, p0

    check-cast v0, Landroidx/core/view/OnReceiveContentViewBehavior;

    return-object v0

    .line 2849
    :cond_8
    sget-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    return-object v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .line 2495
    nop

    .line 2496
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1105
    nop

    .line 1106
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 786
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 787
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    return v0

    .line 789
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1545
    nop

    .line 1546
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLabelFor(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1534
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1618
    nop

    .line 1619
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1997
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1755
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1769
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1738
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2046
    nop

    .line 2047
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2010
    nop

    .line 2011
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3921
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 3922
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getNextClusterForwardId(Landroid/view/View;)I

    move-result v0

    return v0

    .line 3924
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2803
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 2804
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api31Impl;->getReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2806
    :cond_b
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1864
    nop

    .line 1865
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1848
    nop

    .line 1849
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1657
    nop

    .line 1658
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2245
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2274
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2639
    nop

    .line 2640
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2298
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2306
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2314
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2322
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2330
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3826
    nop

    .line 3827
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1405
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 2624
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2626
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2421
    nop

    .line 2422
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1961
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1975
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2385
    nop

    .line 2386
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 2676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 2677
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    return-object v0

    .line 2679
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2680
    .local v0, "context":Landroid/content/Context;
    :goto_f
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 2681
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_26

    .line 2682
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2683
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_25

    invoke-static {v1, p0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    :cond_25
    return-object v2

    .line 2685
    .end local v1    # "window":Landroid/view/Window;
    :cond_26
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_f

    .line 2687
    :cond_2e
    return-object v2
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2438
    nop

    .line 2439
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2338
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2346
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3581
    nop

    .line 3582
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 912
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4067
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->hasExplicitFocusable(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 4069
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3190
    nop

    .line 3191
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 3335
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3336
    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Landroidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    goto :goto_12

    .line 3337
    :cond_b
    if-nez p1, :cond_12

    .line 3338
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 3340
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3756
    nop

    .line 3757
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api15Impl;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2965
    nop

    .line 2966
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 991
    nop

    .line 992
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isAccessibilityHeading(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4360
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4361
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3744
    nop

    .line 3745
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3976
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 3977
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isFocusedByDefault(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 3979
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1184
    nop

    .line 1185
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 899
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 900
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isImportantForAutofill(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 902
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3539
    nop

    .line 3540
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api18Impl;->isInLayout(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3947
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 3948
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isKeyboardNavigationCluster(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 3950
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3550
    nop

    .line 3551
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3567
    nop

    .line 3568
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLayoutDirectionResolved(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3132
    nop

    .line 3133
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1701
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2978
    nop

    .line 2979
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isScreenReaderFocusable(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4222
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4223
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 1
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2525
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2526
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 4014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4015
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 4017
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 1
    .param p0, "payload"    # Landroidx/core/view/ContentInfoCompat;

    .line 2853
    return-object p0
.end method

.method static notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "changeType"    # I

    .line 4476
    nop

    .line 4477
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4478
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 4479
    return-void

    .line 4481
    :cond_14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 4482
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 4485
    .local v1, "isVisibleAccessibilityPane":Z
    :goto_23
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_87

    if-eqz v1, :cond_2e

    goto :goto_87

    .line 4497
    :cond_2e
    if-ne p1, v3, :cond_52

    .line 4498
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4499
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4500
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4501
    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 4502
    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4503
    invoke-virtual {p0, v2}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4504
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4505
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_86

    .line 4506
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_86

    .line 4507
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4509
    .local v2, "parent":Landroid/view/ViewParent;
    :try_start_5c
    invoke-static {v2, p0, p0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_5f
    .catch Ljava/lang/AbstractMethodError; {:try_start_5c .. :try_end_5f} :catch_60

    .line 4513
    goto :goto_aa

    .line 4510
    :catch_60
    move-exception v3

    .line 4511
    .local v3, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ViewCompat"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    .line 4506
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    :cond_86
    :goto_86
    goto :goto_aa

    .line 4487
    :cond_87
    :goto_87
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4488
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v1, :cond_8e

    .line 4489
    goto :goto_90

    .line 4490
    :cond_8e
    const/16 v3, 0x800

    .line 4488
    :goto_90
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4491
    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 4492
    if-eqz v1, :cond_a6

    .line 4493
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4494
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->setViewImportanceForAccessibilityIfNeeded(Landroid/view/View;)V

    .line 4496
    :cond_a6
    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4497
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    nop

    .line 4515
    :goto_aa
    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 3659
    nop

    .line 3660
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3687
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 3611
    nop

    .line 3612
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3639
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 2554
    nop

    .line 2555
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 2556
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    if-eqz v0, :cond_16

    .line 2557
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2558
    .local v1, "result":Landroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2560
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2564
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_16
    return-object p1
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 667
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 698
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 699
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 635
    return-void
.end method

.method private static paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4301
    new-instance v0, Landroidx/core/view/ViewCompat$2;

    sget v1, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1206
    nop

    .line 1207
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "payload"    # Landroidx/core/view/ContentInfoCompat;

    .line 2829
    const/4 v0, 0x3

    const-string v1, "ViewCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performReceiveContent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2831
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2830
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_50

    .line 2834
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api31Impl;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    return-object v0

    .line 2836
    :cond_50
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    .line 2837
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/OnReceiveContentListener;

    .line 2838
    .local v0, "listener":Landroidx/core/view/OnReceiveContentListener;
    if-eqz v0, :cond_6b

    .line 2839
    invoke-interface {v0, p0, p1}, Landroidx/core/view/OnReceiveContentListener;->onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v1

    .line 2840
    .local v1, "remaining":Landroidx/core/view/ContentInfoCompat;
    if-nez v1, :cond_62

    const/4 v2, 0x0

    goto :goto_6a

    :cond_62
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    :goto_6a
    return-object v2

    .line 2842
    .end local v1    # "remaining":Landroidx/core/view/ContentInfoCompat;
    :cond_6b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 1020
    nop

    .line 1021
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1025
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1042
    nop

    .line 1043
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1047
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 1060
    nop

    .line 1061
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1065
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 1083
    nop

    .line 1084
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1088
    return-void
.end method

.method public static removeAccessibilityAction(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "actionId"    # I

    .line 1343
    nop

    .line 1344
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 1345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 1348
    return-void
.end method

.method private static removeActionWithId(ILandroid/view/View;)V
    .registers 5
    .param p0, "actionId"    # I
    .param p1, "view"    # Landroid/view/View;

    .line 1351
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1352
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1353
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v2

    if-ne v2, p0, :cond_1b

    .line 1354
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1355
    goto :goto_1e

    .line 1352
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1358
    .end local v1    # "i":I
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 4130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 4131
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4132
    return-void

    .line 4134
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4136
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4137
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_20

    .line 4138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    .line 4140
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Landroid/view/View;)V

    .line 4143
    :cond_20
    return-void
.end method

.method public static replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "replacedAction"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "command"    # Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1317
    if-nez p3, :cond_c

    if-nez p2, :cond_c

    .line 1318
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    goto :goto_13

    .line 1320
    :cond_c
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->createReplacementAction(Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1322
    :goto_13
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 2449
    nop

    .line 2450
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    .line 2454
    return-void
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 1681
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->requireViewById(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 1684
    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1685
    .local v0, "targetView":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_14

    .line 1688
    return-object v0

    .line 1686
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveSizeAndState(III)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1721
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4045
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->restoreDefaultFocus(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 4047
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public static saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleable"    # [I
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "t"    # Landroid/content/res/TypedArray;
    .param p5, "defStyleAttr"    # I
    .param p6, "defStyleRes"    # I

    .line 527
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 528
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 531
    :cond_9
    return-void
.end method

.method private static screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4227
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    sget v1, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "delegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .line 728
    if-nez p1, :cond_10

    .line 729
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v0, :cond_10

    .line 730
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    move-object p1, v0

    .line 732
    :cond_10
    if-nez p1, :cond_14

    const/4 v0, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :goto_18
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 733
    return-void
.end method

.method public static setAccessibilityHeading(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isHeading"    # Z

    .line 4377
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 4378
    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 1833
    nop

    .line 1834
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1836
    return-void
.end method

.method public static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "accessibilityPaneTitle"    # Ljava/lang/CharSequence;

    .line 4270
    nop

    .line 4271
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 4272
    if-eqz p1, :cond_10

    .line 4273
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->addAccessibilityPane(Landroid/view/View;)V

    goto :goto_15

    .line 4275
    :cond_10
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->removeAccessibilityPane(Landroid/view/View;)V

    .line 4278
    :goto_15
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2947
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 2948
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2137
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2138
    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "autofillHints"    # [Ljava/lang/String;

    .line 765
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 766
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    .line 768
    :cond_9
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 2991
    nop

    .line 2992
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2996
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 3023
    nop

    .line 3024
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 3026
    nop

    .line 3042
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 3071
    nop

    .line 3072
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 3074
    nop

    .line 3090
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2470
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ViewCompat"

    if-nez v1, :cond_26

    .line 2472
    :try_start_a
    const-class v1, Landroid/view/ViewGroup;

    const-string v5, "setChildrenDrawingOrderEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 2473
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 2476
    goto :goto_21

    .line 2474
    :catch_1b
    move-exception v1

    .line 2475
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2477
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_21
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2480
    :cond_26
    :try_start_26
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_33} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_42

    .line 2485
    :catch_34
    move-exception v1

    .line 2486
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 2483
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_39
    move-exception v1

    .line 2484
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_42

    .line 2481
    :catch_3e
    move-exception v1

    .line 2482
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2487
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_42
    nop

    .line 2488
    :goto_43
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 3719
    nop

    .line 3720
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3722
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    .line 2353
    nop

    .line 2354
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setElevation(Landroid/view/View;F)V

    .line 2356
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fitSystemWindows"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2511
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2512
    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFocusedByDefault"    # Z

    .line 3995
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 3996
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setFocusedByDefault(Landroid/view/View;Z)V

    .line 3998
    :cond_9
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "hasTransientState"    # Z

    .line 1005
    nop

    .line 1006
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setHasTransientState(Landroid/view/View;Z)V

    .line 1008
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 1133
    nop

    .line 1134
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1145
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 831
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    .line 833
    :cond_9
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isCluster"    # Z

    .line 3961
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 3962
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setKeyboardNavigationCluster(Landroid/view/View;Z)V

    .line 3964
    :cond_9
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "labeledId"    # I

    .line 1559
    nop

    .line 1560
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setLabelFor(Landroid/view/View;I)V

    .line 1562
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 1595
    nop

    .line 1596
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1604
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1509
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1510
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layoutDirection"    # I

    .line 1642
    nop

    .line 1643
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setLayoutDirection(Landroid/view/View;I)V

    .line 1645
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .line 3109
    nop

    .line 3110
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 3116
    return-void
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "nextClusterForwardId"    # I

    .line 3935
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 3936
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setNextClusterForwardId(Landroid/view/View;I)V

    .line 3938
    :cond_9
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 2534
    nop

    .line 2535
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2537
    return-void
.end method

.method public static setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mimeTypes"    # [Ljava/lang/String;
    .param p2, "listener"    # Landroidx/core/view/OnReceiveContentListener;

    .line 2754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_a

    .line 2755
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api31Impl;->setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V

    .line 2756
    return-void

    .line 2758
    :cond_a
    if-eqz p1, :cond_12

    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    move-object v0, p1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x0

    :goto_13
    move-object p1, v0

    .line 2759
    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 2760
    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    const-string v2, "When the listener is set, MIME types must also be set"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2763
    :cond_21
    if-eqz p1, :cond_52

    .line 2764
    const/4 v1, 0x0

    .line 2765
    .local v1, "hasLeadingWildcard":Z
    array-length v2, p1

    :goto_25
    if-ge v0, v2, :cond_36

    aget-object v3, p1, v0

    .line 2766
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2767
    const/4 v1, 0x1

    .line 2768
    goto :goto_36

    .line 2765
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2771
    :cond_36
    :goto_36
    xor-int/lit8 v0, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A MIME type set here must not start with *: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2772
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2771
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2774
    .end local v1    # "hasLeadingWildcard":Z
    :cond_52
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2775
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2776
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "overScrollMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 595
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 1885
    nop

    .line 1886
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1890
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2261
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 2262
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2290
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 2291
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pointerIcon"    # Landroidx/core/view/PointerIconCompat;

    .line 3837
    nop

    .line 3838
    if-eqz p1, :cond_8

    .line 3839
    invoke-virtual {p1}, Landroidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    check-cast v0, Landroid/view/PointerIcon;

    .line 3838
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api24Impl;->setPointerIcon(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 3841
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2180
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 2181
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2194
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 2195
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2208
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 2209
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2931
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 2932
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2221
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2222
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2234
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2235
    return-void
.end method

.method public static setScreenReaderFocusable(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "screenReaderFocusable"    # Z

    .line 4203
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 4204
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I

    .line 3774
    nop

    .line 3775
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;I)V

    .line 3777
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .line 3808
    nop

    .line 3809
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    .line 3811
    return-void
.end method

.method public static setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 1386
    nop

    .line 1387
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 1389
    return-void
.end method

.method public static setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 2608
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 2609
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api29Impl;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    .line 2611
    :cond_9
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 3876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 3877
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3879
    :cond_9
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transitionName"    # Ljava/lang/String;

    .line 2399
    nop

    .line 2400
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 2407
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 2104
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2120
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2121
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationZ"    # F

    .line 2374
    nop

    .line 2375
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 2377
    return-void
.end method

.method private static setViewImportanceForAccessibilityIfNeeded(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 4518
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_a

    .line 4520
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4524
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4525
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_e
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_26

    .line 4526
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 4528
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4530
    goto :goto_26

    .line 4532
    :cond_21
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_e

    .line 4534
    :cond_26
    :goto_26
    return-void
.end method

.method public static setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "callback"    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 2714
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 2715
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2152
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 2153
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2167
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 2168
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "z"    # F

    .line 3600
    nop

    .line 3601
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setZ(Landroid/view/View;F)V

    .line 3603
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 3888
    nop

    .line 3889
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api24Impl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I

    .line 3154
    nop

    .line 3155
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 3301
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_c

    .line 3302
    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result v0

    return v0

    .line 3303
    :cond_c
    if-nez p2, :cond_13

    .line 3304
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 3306
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4324
    new-instance v0, Landroidx/core/view/ViewCompat$3;

    sget v1, Landroidx/core/R$id;->tag_state_description:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x40

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$3;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 3173
    nop

    .line 3174
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->stopNestedScroll(Landroid/view/View;)V

    .line 3178
    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 3318
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3319
    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Landroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    goto :goto_10

    .line 3320
    :cond_b
    if-nez p1, :cond_10

    .line 3321
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 3323
    :cond_10
    :goto_10
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3702
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 3703
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3704
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3705
    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .line 3909
    nop

    .line 3910
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    .line 3912
    return-void
.end method
